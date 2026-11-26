.class public final Lxm9$f;
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
        "Lru6;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lxm9;


# direct methods
.method public constructor <init>(Lxm9;)V
    .locals 0

    iput-object p1, p0, Lxm9$f;->f:Lxm9;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 9

    new-instance v0, Lru6;

    iget-object p0, p0, Lxm9$f;->f:Lxm9;

    iget-object v1, p0, Lxm9;->a:Landroid/content/Context;

    new-instance v2, Lzya;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v3, Leg9;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Leg9;-><init>(I)V

    new-instance v4, Lh03;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lh03;-><init>(I)V

    iget-object v5, p0, Lxm9;->e:Lfh8;

    invoke-virtual {v5}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lt0a;

    new-instance v6, Lv8a;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iget-object p0, p0, Lxm9;->c:Lfh8;

    invoke-virtual {p0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Low9;

    new-instance v8, Lrm9;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    invoke-direct/range {v0 .. v8}, Lru6;-><init>(Landroid/content/Context;Lzya;Leg9;Lh03;Lt0a;Lv8a;Low9;Lrm9;)V

    return-object v0
.end method
