.class public abstract Lio/appmetrica/analytics/impl/eg;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lio/appmetrica/analytics/impl/q9;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Event sent: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lio/appmetrica/analytics/impl/q9;->c:I

    iget-object v2, p0, Lio/appmetrica/analytics/impl/q9;->d:Ljava/lang/String;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/q9;->e:[B

    const/4 v3, 0x1

    if-eq v1, v3, :cond_e

    const/4 v3, 0x2

    if-eq v1, v3, :cond_d

    const/4 v3, 0x4

    if-eq v1, v3, :cond_a

    const/4 p0, 0x5

    if-eq v1, p0, :cond_9

    const/4 p0, 0x7

    if-eq v1, p0, :cond_8

    const/16 p0, 0xd

    if-eq v1, p0, :cond_7

    const/16 p0, 0x23

    if-eq v1, p0, :cond_6

    const/16 p0, 0x28

    if-eq v1, p0, :cond_5

    const/16 p0, 0x2a

    if-eq v1, p0, :cond_4

    const/16 p0, 0x10

    if-eq v1, p0, :cond_3

    const/16 p0, 0x11

    if-eq v1, p0, :cond_2

    const/16 p0, 0x14

    if-eq v1, p0, :cond_1

    const/16 p0, 0x15

    if-eq v1, p0, :cond_0

    packed-switch v1, :pswitch_data_0

    const-string p0, "type="

    invoke-static {v1, p0}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_0
    const-string p0, "Error: "

    invoke-static {p0, v2}, Lbj;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_1
    const-string p0, "Crash: "

    invoke-static {p0, v2}, Lbj;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_2
    const-string p0, "ANR"

    goto :goto_0

    :cond_0
    const-string p0, "Revenue"

    goto :goto_0

    :cond_1
    const-string p0, "User profile update"

    goto :goto_0

    :cond_2
    const-string p0, "Update"

    goto :goto_0

    :cond_3
    const-string p0, "Open"

    goto :goto_0

    :cond_4
    const-string p0, "External attribution"

    goto :goto_0

    :cond_5
    const-string p0, "Ad revenue (ILRD)"

    goto :goto_0

    :cond_6
    const-string p0, "E-Commerce"

    goto :goto_0

    :cond_7
    const-string p0, "The very first event"

    goto :goto_0

    :cond_8
    const-string p0, "Session heartbeat"

    goto :goto_0

    :cond_9
    const-string p0, "Referrer"

    goto :goto_0

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    if-nez v2, :cond_b

    const-string v2, "null"

    :cond_b
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_c

    new-instance v2, Ljava/lang/String;

    sget-object v3, Lha1;->b:Ljava/nio/charset/Charset;

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_c

    const-string p0, " with value "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_d
    const-string p0, "Session start"

    goto :goto_0

    :cond_e
    const-string p0, "Attribution"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final a(Ljava/lang/String;Lio/appmetrica/analytics/impl/pb;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    .line 168
    sget-object p1, Lio/appmetrica/analytics/impl/pb;->c:Lio/appmetrica/analytics/impl/pb;

    .line 169
    :cond_0
    iget v0, p1, Lio/appmetrica/analytics/impl/pb;->a:I

    .line 170
    sget-object v1, Lio/appmetrica/analytics/impl/I9;->d:Ljava/util/EnumSet;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/pb;->a(I)Lio/appmetrica/analytics/impl/pb;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 171
    const-string v0, ": "

    .line 172
    invoke-static {p0, v0}, Lti0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 173
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    sget-object v0, Lio/appmetrica/analytics/impl/I9;->f:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 175
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 176
    :cond_1
    const-string v0, " with name "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    :cond_2
    :goto_0
    sget-object p2, Lio/appmetrica/analytics/impl/I9;->e:Ljava/util/EnumSet;

    invoke-virtual {p2, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    if-eqz p3, :cond_4

    .line 179
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    .line 180
    :cond_3
    const-string p1, " with value "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    :cond_4
    :goto_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method
