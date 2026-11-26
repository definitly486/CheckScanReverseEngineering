.class public final Lyads/sa3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ljava/util/List;

.field public final c:I

.field public final d:Ljava/io/InputStream;

.field public final e:[B


# direct methods
.method public constructor <init>(ILjava/util/ArrayList;ILjava/io/InputStream;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lyads/sa3;->a:I

    .line 18
    iput-object p2, p0, Lyads/sa3;->b:Ljava/util/List;

    .line 19
    iput p3, p0, Lyads/sa3;->c:I

    .line 20
    iput-object p4, p0, Lyads/sa3;->d:Ljava/io/InputStream;

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lyads/sa3;->e:[B

    return-void
.end method

.method public constructor <init>(ILjava/util/List;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lyads/sa3;->a:I

    iput-object p2, p0, Lyads/sa3;->b:Ljava/util/List;

    array-length p1, p3

    iput p1, p0, Lyads/sa3;->c:I

    iput-object p3, p0, Lyads/sa3;->e:[B

    const/4 p1, 0x0

    iput-object p1, p0, Lyads/sa3;->d:Ljava/io/InputStream;

    return-void
.end method
