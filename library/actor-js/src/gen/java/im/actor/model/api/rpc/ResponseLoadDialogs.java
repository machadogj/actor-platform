package im.actor.model.api.rpc;
/*
 *  Generated by the Actor API Scheme generator.  DO NOT EDIT!
 */

import im.actor.model.droidkit.bser.Bser;
import im.actor.model.droidkit.bser.BserParser;
import im.actor.model.droidkit.bser.BserObject;
import im.actor.model.droidkit.bser.BserValues;
import im.actor.model.droidkit.bser.BserWriter;
import im.actor.model.droidkit.bser.DataInput;
import im.actor.model.droidkit.bser.DataOutput;
import static im.actor.model.droidkit.bser.Utils.*;
import java.io.IOException;
import im.actor.model.network.parser.*;
import java.util.List;
import java.util.ArrayList;
import im.actor.model.api.*;

public class ResponseLoadDialogs extends Response {

    public static final int HEADER = 0x69;
    public static ResponseLoadDialogs fromBytes(byte[] data) throws IOException {
        return Bser.parse(new ResponseLoadDialogs(), data);
    }

    private List<Group> groups;
    private List<User> users;
    private List<Dialog> dialogs;

    public ResponseLoadDialogs(List<Group> groups, List<User> users, List<Dialog> dialogs) {
        this.groups = groups;
        this.users = users;
        this.dialogs = dialogs;
    }

    public ResponseLoadDialogs() {

    }

    public List<Group> getGroups() {
        return this.groups;
    }

    public List<User> getUsers() {
        return this.users;
    }

    public List<Dialog> getDialogs() {
        return this.dialogs;
    }

    @Override
    public void parse(BserValues values) throws IOException {
        List<Group> _groups = new ArrayList<Group>();
        for (int i = 0; i < values.getRepeatedCount(1); i ++) {
            _groups.add(new Group());
        }
        this.groups = values.getRepeatedObj(1, _groups);
        List<User> _users = new ArrayList<User>();
        for (int i = 0; i < values.getRepeatedCount(2); i ++) {
            _users.add(new User());
        }
        this.users = values.getRepeatedObj(2, _users);
        List<Dialog> _dialogs = new ArrayList<Dialog>();
        for (int i = 0; i < values.getRepeatedCount(3); i ++) {
            _dialogs.add(new Dialog());
        }
        this.dialogs = values.getRepeatedObj(3, _dialogs);
    }

    @Override
    public void serialize(BserWriter writer) throws IOException {
        writer.writeRepeatedObj(1, this.groups);
        writer.writeRepeatedObj(2, this.users);
        writer.writeRepeatedObj(3, this.dialogs);
    }

    @Override
    public String toString() {
        String res = "tuple LoadDialogs{";
        res += "}";
        return res;
    }

    @Override
    public int getHeaderKey() {
        return HEADER;
    }
}