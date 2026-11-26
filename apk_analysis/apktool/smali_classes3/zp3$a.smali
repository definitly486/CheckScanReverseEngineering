.class public final Lzp3$a;
.super Lj72;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzp3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj72<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Landroid/os/Handler;

.field public final c:I

.field public final d:J

.field public e:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/os/Handler;IJ)V
    .locals 0

    invoke-direct {p0}, Lj72;-><init>()V

    iput-object p1, p0, Lzp3$a;->b:Landroid/os/Handler;

    iput p2, p0, Lzp3$a;->c:I

    iput-wide p3, p0, Lzp3$a;->d:J

    return-void
.end method


# virtual methods
.method public final onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lzp3$a;->e:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final onResourceReady(Ljava/lang/Object;Lk29;)V
    .locals 2

    check-cast p1, Landroid/graphics/Bitmap;

    iput-object p1, p0, Lzp3$a;->e:Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    iget-object p2, p0, Lzp3$a;->b:Landroid/os/Handler;

    invoke-virtual {p2, p1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-wide v0, p0, Lzp3$a;->d:J

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method
