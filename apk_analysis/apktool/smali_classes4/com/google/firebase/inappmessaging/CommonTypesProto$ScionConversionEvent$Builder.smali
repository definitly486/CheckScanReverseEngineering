.class public final Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent$Builder;
.super Lcom/google/protobuf/o$a;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/o$a<",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent$Builder;",
        ">;",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEventOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->access$5500()Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/o$a;-><init>(Lcom/google/protobuf/o;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/firebase/inappmessaging/CommonTypesProto$1;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearName()Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->access$5700(Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;)V

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNameBytes()Lfx0;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->getNameBytes()Lfx0;

    move-result-object p0

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->access$5600(Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNameBytes(Lfx0;)Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->access$5800(Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;Lfx0;)V

    return-object p0
.end method
