.class public final Lyads/ec3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/yc3;


# instance fields
.field public final synthetic a:Ln07;

.field public final synthetic b:Lyads/hc3;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lyads/cc3;


# direct methods
.method public constructor <init>(Ln07;Lyads/hc3;Ljava/lang/String;Lyads/cc3;)V
    .locals 0

    iput-object p1, p0, Lyads/ec3;->a:Ln07;

    iput-object p2, p0, Lyads/ec3;->b:Lyads/hc3;

    iput-object p3, p0, Lyads/ec3;->c:Ljava/lang/String;

    iput-object p4, p0, Lyads/ec3;->d:Lyads/cc3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyads/hi6;)V
    .locals 0

    .line 36
    return-void
.end method

.method public final a(Lyads/xc3;Z)V
    .locals 1

    iget-object p2, p0, Lyads/ec3;->a:Ln07;

    iget-boolean p2, p2, Ln07;->b:Z

    if-nez p2, :cond_0

    iget-object p1, p1, Lyads/xc3;->a:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lyads/ec3;->b:Lyads/hc3;

    iget-object v0, p0, Lyads/ec3;->c:Ljava/lang/String;

    iget-object p0, p0, Lyads/ec3;->d:Lyads/cc3;

    iget-object p2, p2, Lyads/hc3;->b:Lyads/b05;

    invoke-static {v0, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p2, Lyads/b05;->b:Ljava/util/LinkedHashMap;

    invoke-interface {p2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    check-cast p0, Llq9;

    invoke-virtual {p0, p1}, Llq9;->a(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
