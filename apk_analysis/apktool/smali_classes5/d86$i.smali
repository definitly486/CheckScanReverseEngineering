.class public final Ld86$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld86;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Ld86$i;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lio/grpc/d;

.field public final c:D


# direct methods
.method public constructor <init>(Lio/grpc/d;D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld86$i;->b:Lio/grpc/d;

    iput-wide p2, p0, Ld86$i;->c:D

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Ld86$i;

    iget-wide v0, p0, Ld86$i;->c:D

    iget-wide p0, p1, Ld86$i;->c:D

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0
.end method
