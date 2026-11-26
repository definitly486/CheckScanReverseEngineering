.class public final Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant$Builder;
.super Lcom/google/protobuf/o$a;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariantOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/o$a<",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant$Builder;",
        ">;",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariantOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;->access$6000()Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/o$a;-><init>(Lcom/google/protobuf/o;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/firebase/inappmessaging/CommonTypesProto$1;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearContent()Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;->access$6500(Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;)V

    return-object p0
.end method

.method public clearIndex()Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;->access$6200(Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;)V

    return-object p0
.end method

.method public getContent()Lcom/google/firebase/inappmessaging/MessagesProto$Content;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;->getContent()Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    move-result-object p0

    return-object p0
.end method

.method public getIndex()I
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;->getIndex()I

    move-result p0

    return p0
.end method

.method public hasContent()Z
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;->hasContent()Z

    move-result p0

    return p0
.end method

.method public mergeContent(Lcom/google/firebase/inappmessaging/MessagesProto$Content;)Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;->access$6400(Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;Lcom/google/firebase/inappmessaging/MessagesProto$Content;)V

    return-object p0
.end method

.method public setContent(Lcom/google/firebase/inappmessaging/MessagesProto$Content$Builder;)Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;

    invoke-virtual {p1}, Lcom/google/protobuf/o$a;->build()Lcom/google/protobuf/o;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;->access$6300(Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;Lcom/google/firebase/inappmessaging/MessagesProto$Content;)V

    return-object p0
.end method

.method public setContent(Lcom/google/firebase/inappmessaging/MessagesProto$Content;)Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant$Builder;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    .line 18
    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;->access$6300(Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;Lcom/google/firebase/inappmessaging/MessagesProto$Content;)V

    return-object p0
.end method

.method public setIndex(I)Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;->access$6100(Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;I)V

    return-object p0
.end method
