.class public final Li24;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lj46;Lw93;Ljava/lang/String;Lqn2$c;I)Ln93;
    .locals 2

    and-int/lit8 v0, p4, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p2, v1

    :cond_0
    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_1

    move-object p3, v1

    :cond_1
    new-instance p4, Ln93;

    invoke-direct {p4, p0, p1, p2, p3}, Ln93;-><init>(Lj46;Lw93;Ljava/lang/String;Ljava/lang/AutoCloseable;)V

    return-object p4
.end method
