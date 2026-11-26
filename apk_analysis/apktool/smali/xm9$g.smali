.class public final Lxm9$g;
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
        "Lfm9;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lxm9;


# direct methods
.method public constructor <init>(Lxm9;)V
    .locals 0

    iput-object p1, p0, Lxm9$g;->f:Lxm9;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lfm9;

    iget-object p0, p0, Lxm9$g;->f:Lxm9;

    iget-object v1, p0, Lxm9;->f:Lfh8;

    invoke-virtual {v1}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhfa;

    iget-object p0, p0, Lxm9;->g:Lfh8;

    invoke-virtual {p0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lhia;

    invoke-direct {v0, v1, p0}, Lfm9;-><init>(Lhfa;Lhia;)V

    return-object v0
.end method
