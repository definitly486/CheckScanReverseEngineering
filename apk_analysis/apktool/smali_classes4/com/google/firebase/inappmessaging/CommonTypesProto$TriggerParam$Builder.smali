.class public final Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;
.super Lcom/google/protobuf/o$a;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParamOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/o$a<",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;",
        ">;",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParamOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->access$3700()Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/o$a;-><init>(Lcom/google/protobuf/o;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/firebase/inappmessaging/CommonTypesProto$1;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDoubleValue()Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->access$4900(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)V

    return-object p0
.end method

.method public clearFloatValue()Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->access$4700(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)V

    return-object p0
.end method

.method public clearIntValue()Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->access$4500(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)V

    return-object p0
.end method

.method public clearName()Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->access$3900(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)V

    return-object p0
.end method

.method public clearStringValue()Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->access$4200(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)V

    return-object p0
.end method

.method public getDoubleValue()D
    .locals 2

    iget-object p0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->getDoubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloatValue()F
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->getFloatValue()F

    move-result p0

    return p0
.end method

.method public getIntValue()J
    .locals 2

    iget-object p0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->getIntValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNameBytes()Lfx0;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->getNameBytes()Lfx0;

    move-result-object p0

    return-object p0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStringValueBytes()Lfx0;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->getStringValueBytes()Lfx0;

    move-result-object p0

    return-object p0
.end method

.method public setDoubleValue(D)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->access$4800(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;D)V

    return-object p0
.end method

.method public setFloatValue(F)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->access$4600(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;F)V

    return-object p0
.end method

.method public setIntValue(J)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->access$4400(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;J)V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->access$3800(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNameBytes(Lfx0;)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->access$4000(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;Lfx0;)V

    return-object p0
.end method

.method public setStringValue(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->access$4100(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;Ljava/lang/String;)V

    return-object p0
.end method

.method public setStringValueBytes(Lfx0;)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->access$4300(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;Lfx0;)V

    return-object p0
.end method
