.class public final Lea5$b;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lea5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic b:Lea5;


# direct methods
.method public constructor <init>(Lea5;)V
    .locals 0

    iput-object p1, p0, Lea5$b;->b:Lea5;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public final write(I)V
    .locals 3

    int-to-byte p1, p1

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    invoke-virtual {p0, v1, v2, v0}, Lea5$b;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 0

    .line 11
    iget-object p0, p0, Lea5$b;->b:Lea5;

    .line 12
    invoke-virtual {p0, p1, p2, p3}, Lea5;->f([BII)V

    return-void
.end method
