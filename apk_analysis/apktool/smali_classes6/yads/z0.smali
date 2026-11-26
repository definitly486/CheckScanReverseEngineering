.class public final Lyads/z0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lyads/v46;

.field public final c:Lyads/k16;

.field public final d:Lyads/sn0;

.field public final e:Lyads/jo1;

.field public f:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/q84;)V
    .locals 4

    new-instance v0, Lyads/v46;

    invoke-direct {v0}, Lyads/v46;-><init>()V

    new-instance v1, Lyads/k16;

    invoke-direct {v1}, Lyads/k16;-><init>()V

    new-instance v2, Lyads/sn0;

    invoke-direct {v2}, Lyads/sn0;-><init>()V

    new-instance v3, Lyads/jo1;

    invoke-direct {v3, p2}, Lyads/jo1;-><init>(Lyads/q84;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/z0;->a:Landroid/content/Context;

    iput-object v0, p0, Lyads/z0;->b:Lyads/v46;

    iput-object v1, p0, Lyads/z0;->c:Lyads/k16;

    iput-object v2, p0, Lyads/z0;->d:Lyads/sn0;

    iput-object v3, p0, Lyads/z0;->e:Lyads/jo1;

    return-void
.end method
