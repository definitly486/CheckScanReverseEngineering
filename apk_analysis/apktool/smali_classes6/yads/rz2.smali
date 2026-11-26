.class public final Lyads/rz2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/ry2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lyads/ry2;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lyads/ry2;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/rz2;->a:Lyads/ry2;

    return-void
.end method


# virtual methods
.method public final a(Lyads/cz2;)Landroid/graphics/Typeface;
    .locals 2

    sget-object v0, Lyads/oz2;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    iget-object p0, p0, Lyads/rz2;->a:Lyads/ry2;

    invoke-virtual {p0, p1}, Lyads/ry2;->a(Lyads/cz2;)Landroid/graphics/Typeface;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
