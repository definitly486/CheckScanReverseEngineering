.class public final Lyads/lg4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/sd4;

.field public final b:Lyads/b05;

.field public final c:Lyads/fm4;

.field public final d:Lyads/sc3;

.field public final e:Lyads/yd3;

.field public final f:Lyads/zd4;

.field public final g:Ljava/util/concurrent/CopyOnWriteArraySet;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/sd4;Lyads/b05;Lyads/fm4;)V
    .locals 3

    new-instance v0, Lyads/sc3;

    invoke-direct {v0, p1}, Lyads/sc3;-><init>(Landroid/content/Context;)V

    new-instance v1, Lyads/yd3;

    invoke-direct {v1}, Lyads/yd3;-><init>()V

    new-instance v2, Lyads/zd4;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {v2, p3, p1}, Lyads/zd4;-><init>(Lyads/b05;Landroid/content/res/Resources;)V

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/lg4;->a:Lyads/sd4;

    iput-object p3, p0, Lyads/lg4;->b:Lyads/b05;

    iput-object p4, p0, Lyads/lg4;->c:Lyads/fm4;

    iput-object v0, p0, Lyads/lg4;->d:Lyads/sc3;

    iput-object v1, p0, Lyads/lg4;->e:Lyads/yd3;

    iput-object v2, p0, Lyads/lg4;->f:Lyads/zd4;

    iput-object p1, p0, Lyads/lg4;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-void
.end method
