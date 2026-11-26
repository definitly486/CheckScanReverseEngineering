.class public final Lg98$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvq2$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg98;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Li07;

.field public final b:Ll13;


# direct methods
.method public constructor <init>(Li07;Ll13;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg98$a;->a:Li07;

    iput-object p2, p0, Lg98$a;->b:Ll13;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object p0, p0, Lg98$a;->a:Li07;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Li07;->b:[B

    array-length v0, v0

    iput v0, p0, Li07;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final b(Lij0;Landroid/graphics/Bitmap;)V
    .locals 0

    iget-object p0, p0, Lg98$a;->b:Ll13;

    iget-object p0, p0, Ll13;->c:Ljava/io/IOException;

    if-eqz p0, :cond_1

    if-eqz p2, :cond_0

    invoke-interface {p1, p2}, Lij0;->c(Landroid/graphics/Bitmap;)V

    :cond_0
    throw p0

    :cond_1
    return-void
.end method
