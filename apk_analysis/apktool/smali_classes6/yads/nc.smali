.class public final Lyads/nc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lyads/oc;


# direct methods
.method public constructor <init>(Lyads/oc;)V
    .locals 0

    iput-object p1, p0, Lyads/nc;->b:Lyads/oc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lyads/nc;->b:Lyads/oc;

    iget-object p0, p0, Lyads/oc;->a:Lyads/uq4;

    iget-object p0, p0, Lyads/uq4;->a:Lyads/zu3;

    check-cast p0, Lyads/av3;

    const-string v0, "OPT_OUT_ENABLED"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lyads/av3;->b(Ljava/lang/String;Z)V

    return-void
.end method
