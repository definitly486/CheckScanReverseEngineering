.class public final Le78$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltd2$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le78;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lio7;


# direct methods
.method public constructor <init>(Lio7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le78$a;->a:Lio7;

    return-void
.end method


# virtual methods
.method public final a(Lx48;Lzz5;)Ltd2;
    .locals 2

    invoke-static {p2}, Lf24;->a(Lzz5;)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_0

    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p1, Lx48;->a:Lh24;

    invoke-static {v0, p2}, Li78;->a(Lh24;Lzz5;)Landroid/graphics/ImageDecoder$Source;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :cond_2
    new-instance v1, Le78;

    iget-object p1, p1, Lx48;->a:Lh24;

    iget-object p0, p0, Le78$a;->a:Lio7;

    invoke-direct {v1, v0, p1, p2, p0}, Le78;-><init>(Landroid/graphics/ImageDecoder$Source;Ljava/lang/AutoCloseable;Lzz5;Lio7;)V

    return-object v1
.end method
