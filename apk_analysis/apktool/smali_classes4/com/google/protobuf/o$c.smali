.class public abstract Lcom/google/protobuf/o$c;
.super Lcom/google/protobuf/o;
.source "SourceFile"

# interfaces
.implements Lha5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/protobuf/o$c<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/protobuf/o<",
        "TMessageType;TBuilderType;>;",
        "Lha5;"
    }
.end annotation


# instance fields
.field protected extensions:Lcom/google/protobuf/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/m<",
            "Lcom/google/protobuf/o$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/o;-><init>()V

    sget-object v0, Lcom/google/protobuf/m;->d:Lcom/google/protobuf/m;

    iput-object v0, p0, Lcom/google/protobuf/o$c;->extensions:Lcom/google/protobuf/m;

    return-void
.end method


# virtual methods
.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/a0;
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/o;->getDefaultInstanceForType()Lcom/google/protobuf/o;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/protobuf/a0$a;
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/o;->newBuilderForType()Lcom/google/protobuf/o$a;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic toBuilder()Lcom/google/protobuf/a0$a;
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/o;->toBuilder()Lcom/google/protobuf/o$a;

    move-result-object p0

    return-object p0
.end method
