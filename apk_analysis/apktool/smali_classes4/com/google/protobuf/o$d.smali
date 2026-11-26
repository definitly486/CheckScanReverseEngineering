.class public final Lcom/google/protobuf/o$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/m$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/m$b<",
        "Lcom/google/protobuf/o$d;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/google/protobuf/q$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q$d<",
            "*>;"
        }
    .end annotation
.end field

.field public final c:I

.field public final d:Lui9;

.field public final e:Z

.field public final f:Z


# direct methods
.method public constructor <init>(Lcom/google/protobuf/q$d;ILui9;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/q$d<",
            "*>;I",
            "Lui9;",
            "ZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/o$d;->b:Lcom/google/protobuf/q$d;

    iput p2, p0, Lcom/google/protobuf/o$d;->c:I

    iput-object p3, p0, Lcom/google/protobuf/o$d;->d:Lui9;

    iput-boolean p4, p0, Lcom/google/protobuf/o$d;->e:Z

    iput-boolean p5, p0, Lcom/google/protobuf/o$d;->f:Z

    return-void
.end method


# virtual methods
.method public final b(Lcom/google/protobuf/a0$a;Lcom/google/protobuf/a0;)Lcom/google/protobuf/o$a;
    .locals 0

    check-cast p1, Lcom/google/protobuf/o$a;

    check-cast p2, Lcom/google/protobuf/o;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/o$a;->mergeFrom(Lcom/google/protobuf/o;)Lcom/google/protobuf/o$a;

    move-result-object p0

    return-object p0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/protobuf/o$d;

    iget p0, p0, Lcom/google/protobuf/o$d;->c:I

    iget p1, p1, Lcom/google/protobuf/o$d;->c:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public final getLiteJavaType()Lvi9;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/o$d;->d:Lui9;

    invoke-virtual {p0}, Lui9;->a()Lvi9;

    move-result-object p0

    return-object p0
.end method

.method public final getLiteType()Lui9;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/o$d;->d:Lui9;

    return-object p0
.end method

.method public final getNumber()I
    .locals 0

    iget p0, p0, Lcom/google/protobuf/o$d;->c:I

    return p0
.end method

.method public final isPacked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/protobuf/o$d;->f:Z

    return p0
.end method

.method public final isRepeated()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/protobuf/o$d;->e:Z

    return p0
.end method
