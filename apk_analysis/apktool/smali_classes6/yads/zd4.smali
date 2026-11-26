.class public final Lyads/zd4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/b05;

.field public final b:Lyads/wf4;

.field public final c:Lyads/mg4;

.field public final d:Lyads/bi4;

.field public final e:Lyads/ki4;


# direct methods
.method public constructor <init>(Lyads/b05;Landroid/content/res/Resources;)V
    .locals 3

    new-instance v0, Lyads/wf4;

    invoke-direct {v0, p2}, Lyads/wf4;-><init>(Landroid/content/res/Resources;)V

    new-instance p2, Lyads/mg4;

    invoke-direct {p2}, Lyads/mg4;-><init>()V

    new-instance v1, Lyads/bi4;

    invoke-direct {v1}, Lyads/bi4;-><init>()V

    new-instance v2, Lyads/ki4;

    invoke-direct {v2}, Lyads/ki4;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/zd4;->a:Lyads/b05;

    iput-object v0, p0, Lyads/zd4;->b:Lyads/wf4;

    iput-object p2, p0, Lyads/zd4;->c:Lyads/mg4;

    iput-object v1, p0, Lyads/zd4;->d:Lyads/bi4;

    iput-object v2, p0, Lyads/zd4;->e:Lyads/ki4;

    return-void
.end method
