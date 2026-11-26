.class public final Le78;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltd2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le78$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/graphics/ImageDecoder$Source;

.field public final b:Ljava/lang/AutoCloseable;

.field public final c:Lzz5;

.field public final d:Lio7;


# direct methods
.method public constructor <init>(Landroid/graphics/ImageDecoder$Source;Ljava/lang/AutoCloseable;Lzz5;Lio7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le78;->a:Landroid/graphics/ImageDecoder$Source;

    iput-object p2, p0, Le78;->b:Ljava/lang/AutoCloseable;

    iput-object p3, p0, Le78;->c:Lzz5;

    iput-object p4, p0, Le78;->d:Lio7;

    return-void
.end method


# virtual methods
.method public final a(Lf02;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lf78;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lf78;

    iget v1, v0, Lf78;->o:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lf78;->o:I

    goto :goto_0

    :cond_0
    new-instance v0, Lf78;

    invoke-direct {v0, p0, p1}, Lf78;-><init>(Le78;Lf02;)V

    :goto_0
    iget-object p1, v0, Lf78;->m:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lf78;->o:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object v0, v0, Lf78;->l:Lio7;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Le78;->d:Lio7;

    iput-object p1, v0, Lf78;->l:Lio7;

    iput v4, v0, Lf78;->o:I

    invoke-virtual {p1, v0}, Lgo7;->a(Lf02;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p1

    :goto_1
    :try_start_0
    iget-object p1, p0, Le78;->b:Ljava/lang/AutoCloseable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ln07;

    invoke-direct {v1}, Ln07;-><init>()V

    iget-object v2, p0, Le78;->a:Landroid/graphics/ImageDecoder$Source;

    new-instance v4, Lg78;

    invoke-direct {v4, p0, v1}, Lg78;-><init>(Le78;Ln07;)V

    invoke-static {v2, v4}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance v2, Lqd2;

    new-instance v4, Ldj0;

    invoke-direct {v4, p0}, Ldj0;-><init>(Landroid/graphics/Bitmap;)V

    iget-boolean p0, v1, Ln07;->b:Z

    invoke-direct {v2, v4, p0}, Lqd2;-><init>(Lx04;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {p1, v3}, Laq5;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v0}, Leo7;->release()V

    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v1

    :try_start_4
    invoke-static {p1, p0}, Laq5;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    invoke-interface {v0}, Leo7;->release()V

    throw p0
.end method
