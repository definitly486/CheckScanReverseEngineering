.class public final Lxm9$e;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxm9;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Lhia;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lxm9;


# direct methods
.method public constructor <init>(Lxm9;)V
    .locals 0

    iput-object p1, p0, Lxm9$e;->f:Lxm9;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lhia;

    iget-object p0, p0, Lxm9$e;->f:Lxm9;

    iget-object v1, p0, Lxm9;->h:Lfh8;

    invoke-virtual {v1}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsha;

    new-instance v2, Lc6a;

    iget-object p0, p0, Lxm9;->a:Landroid/content/Context;

    invoke-direct {v2, p0}, Lc6a;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2}, Lhia;-><init>(Lsha;Lc6a;)V

    return-object v0
.end method
