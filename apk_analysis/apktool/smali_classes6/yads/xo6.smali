.class public final Lyads/xo6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/vp6;


# static fields
.field public static final e:Lyads/xo6;


# instance fields
.field public a:Ljava/util/Date;

.field public b:Z

.field public final c:Lyads/xp6;

.field public d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lyads/xo6;

    new-instance v1, Lyads/xp6;

    invoke-direct {v1}, Lyads/xp6;-><init>()V

    invoke-direct {v0, v1}, Lyads/xo6;-><init>(Lyads/xp6;)V

    sput-object v0, Lyads/xo6;->e:Lyads/xo6;

    return-void
.end method

.method public constructor <init>(Lyads/xp6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/xo6;->c:Lyads/xp6;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 6

    iget-boolean v0, p0, Lyads/xo6;->d:Z

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iget-object v1, p0, Lyads/xo6;->a:Ljava/util/Date;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    iput-object v0, p0, Lyads/xo6;->a:Ljava/util/Date;

    iget-boolean v0, p0, Lyads/xo6;->b:Z

    if-eqz v0, :cond_3

    sget-object v0, Lyads/tp6;->c:Lyads/tp6;

    iget-object v0, v0, Lyads/tp6;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/dp6;

    iget-object v1, v1, Lyads/dp6;->e:Lyads/s9;

    iget-object v2, p0, Lyads/xo6;->a:Ljava/util/Date;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Date;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "timestamp"

    invoke-static {v3, v4, v2}, Lyads/rp6;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lyads/nq6;->a:Lyads/nq6;

    iget-object v1, v1, Lyads/s9;->b:Lyads/np6;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "setLastActivity"

    invoke-virtual {v2, v1, v4, v3}, Lyads/nq6;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iput-boolean p1, p0, Lyads/xo6;->d:Z

    return-void
.end method
