.class public final Lsn1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lsn1;->a:I

    iput p2, p0, Lsn1;->b:I

    return-void
.end method


# virtual methods
.method public final a(IIIF)I
    .locals 0

    and-int/lit8 p0, p1, 0xf

    if-nez p0, :cond_0

    return p2

    :cond_0
    sub-int/2addr p3, p2

    int-to-float p0, p3

    mul-float/2addr p0, p4

    float-to-int p0, p0

    add-int/2addr p2, p0

    return p2
.end method
