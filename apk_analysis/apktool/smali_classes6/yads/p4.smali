.class public abstract Lyads/p4;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lyads/e4;Lyads/o4;)Lyads/m4;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-static {}, Lme0;->e()V

    return-object v0

    :pswitch_0
    sget-object p0, Lyads/o8;->q:Lyads/m4;

    return-object p0

    :pswitch_1
    sget-object p0, Lyads/o8;->v:Lyads/m4;

    return-object p0

    :pswitch_2
    sget-object p0, Lyads/o8;->u:Lyads/m4;

    return-object p0

    :pswitch_3
    sget-object p0, Lyads/o8;->t:Lyads/m4;

    return-object p0

    :pswitch_4
    sget-object p0, Lyads/o8;->s:Lyads/m4;

    return-object p0

    :pswitch_5
    sget-object p0, Lyads/o8;->r:Lyads/m4;

    return-object p0

    :pswitch_6
    sget-object p0, Lyads/o8;->k:Lyads/m4;

    return-object p0

    :pswitch_7
    sget-object p0, Lyads/o8;->j:Lyads/m4;

    return-object p0

    :pswitch_8
    sget-object p0, Lyads/o8;->g:Lyads/m4;

    return-object p0

    :pswitch_9
    sget-object p0, Lyads/o8;->n:Lyads/m4;

    return-object p0

    :pswitch_a
    sget-object p0, Lyads/o8;->e:Lyads/m4;

    return-object p0

    :pswitch_b
    sget-object p0, Lyads/o8;->d:Lyads/m4;

    return-object p0

    :pswitch_c
    sget-object p0, Lyads/o8;->h:Lyads/m4;

    return-object p0

    :pswitch_d
    sget-object p0, Lyads/o8;->c:Lyads/m4;

    return-object p0

    :pswitch_e
    sget-object p1, Lyads/o8;->a:Lyads/m4;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lyads/e4;->c:Lyads/ma;

    iget-object v0, p0, Lyads/ma;->a:Ljava/lang/String;

    :cond_0
    invoke-static {v0}, Lyads/o8;->a(Ljava/lang/String;)Lyads/m4;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_e
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
