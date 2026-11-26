.class public final Lxm9$a;
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
        "Low9;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lxm9;


# direct methods
.method public constructor <init>(Lxm9;)V
    .locals 0

    iput-object p1, p0, Lxm9$a;->f:Lxm9;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    new-instance v0, Low9;

    iget-object p0, p0, Lxm9$a;->f:Lxm9;

    iget-object p0, p0, Lxm9;->a:Landroid/content/Context;

    sget-object v1, Lql9;->c:Lql9$b;

    invoke-virtual {v1, p0}, Lql9$b;->a(Landroid/content/Context;)Lql9;

    move-result-object v1

    iget-object v1, v1, Lql9;->b:Lxa5;

    invoke-direct {v0, p0, v1}, Low9;-><init>(Landroid/content/Context;Lxa5;)V

    return-object v0
.end method
