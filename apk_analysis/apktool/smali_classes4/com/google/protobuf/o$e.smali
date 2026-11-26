.class public final Lcom/google/protobuf/o$e;
.super Lt43;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ContainingType::",
        "Lcom/google/protobuf/a0;",
        "Type:",
        "Ljava/lang/Object;",
        ">",
        "Lt43<",
        "TContainingType;TType;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/protobuf/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TContainingType;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TType;"
        }
    .end annotation
.end field

.field public final c:Lcom/google/protobuf/a0;

.field public final d:Lcom/google/protobuf/o$d;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/a0;Ljava/lang/Object;Lcom/google/protobuf/a0;Lcom/google/protobuf/o$d;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p4, Lcom/google/protobuf/o$d;->d:Lui9;

    sget-object v2, Lui9;->MESSAGE:Lui9;

    if-ne v1, v2, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Null messageDefaultInstance"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/google/protobuf/o$e;->a:Lcom/google/protobuf/a0;

    iput-object p2, p0, Lcom/google/protobuf/o$e;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/protobuf/o$e;->c:Lcom/google/protobuf/a0;

    iput-object p4, p0, Lcom/google/protobuf/o$e;->d:Lcom/google/protobuf/o$d;

    return-void

    :cond_2
    const-string p0, "Null containingTypeDefaultInstance"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    throw v0
.end method
