.class public final Lxm9$c;
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
        "Lhfa;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lxm9;


# direct methods
.method public constructor <init>(Lxm9;)V
    .locals 0

    iput-object p1, p0, Lxm9$c;->f:Lxm9;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lhfa;

    iget-object p0, p0, Lxm9$c;->f:Lxm9;

    iget-object p0, p0, Lxm9;->a:Landroid/content/Context;

    new-instance v1, Lg;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, p0, v1}, Lhfa;-><init>(Landroid/content/Context;Lg;)V

    return-object v0
.end method
