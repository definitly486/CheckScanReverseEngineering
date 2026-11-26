.class public final synthetic Lyads/pm4;
.super Lqm3;
.source "SourceFile"

# interfaces
.implements Lll3;


# direct methods
.method public constructor <init>(Lyads/qm4;)V
    .locals 7

    const-string v5, "invalidate()V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lyads/qm4;

    const-string v4, "invalidate"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lqy0;->receiver:Ljava/lang/Object;

    check-cast p0, Lyads/qm4;

    invoke-virtual {p0}, Lyads/qm4;->invalidate()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
