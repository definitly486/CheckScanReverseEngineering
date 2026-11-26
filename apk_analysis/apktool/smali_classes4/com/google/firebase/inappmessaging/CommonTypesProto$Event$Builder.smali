.class public final Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;
.super Lcom/google/protobuf/o$a;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inappmessaging/CommonTypesProto$EventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/o$a<",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;",
        ">;",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$EventOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->access$2000()Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/o$a;-><init>(Lcom/google/protobuf/o;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/firebase/inappmessaging/CommonTypesProto$1;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllTriggerParams(Ljava/lang/Iterable;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;",
            ">;)",
            "Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->access$2400(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addTriggerParams(ILcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    .line 22
    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    .line 23
    invoke-virtual {p2}, Lcom/google/protobuf/o$a;->build()Lcom/google/protobuf/o;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    .line 24
    invoke-static {v0, p1, p2}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->access$2300(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;ILcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)V

    return-object p0
.end method

.method public addTriggerParams(ILcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    .line 18
    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->access$2300(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;ILcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)V

    return-object p0
.end method

.method public addTriggerParams(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-virtual {p1}, Lcom/google/protobuf/o$a;->build()Lcom/google/protobuf/o;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->access$2200(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)V

    return-object p0
.end method

.method public addTriggerParams(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    .line 20
    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->access$2200(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)V

    return-object p0
.end method

.method public clearCount()Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->access$3500(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;)V

    return-object p0
.end method

.method public clearName()Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->access$2800(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;)V

    return-object p0
.end method

.method public clearPreviousTimestampMillis()Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->access$3300(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;)V

    return-object p0
.end method

.method public clearTimestampMillis()Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->access$3100(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;)V

    return-object p0
.end method

.method public clearTriggerParams()Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->access$2500(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;)V

    return-object p0
.end method

.method public getCount()I
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->getCount()I

    move-result p0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNameBytes()Lfx0;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->getNameBytes()Lfx0;

    move-result-object p0

    return-object p0
.end method

.method public getPreviousTimestampMillis()J
    .locals 2

    iget-object p0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->getPreviousTimestampMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimestampMillis()J
    .locals 2

    iget-object p0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->getTimestampMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTriggerParams(I)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-virtual {p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->getTriggerParams(I)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    move-result-object p0

    return-object p0
.end method

.method public getTriggerParamsCount()I
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->getTriggerParamsCount()I

    move-result p0

    return p0
.end method

.method public getTriggerParamsList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->getTriggerParamsList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public removeTriggerParams(I)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->access$2600(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;I)V

    return-object p0
.end method

.method public setCount(I)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->access$3400(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;I)V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->access$2700(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNameBytes(Lfx0;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->access$2900(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;Lfx0;)V

    return-object p0
.end method

.method public setPreviousTimestampMillis(J)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->access$3200(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;J)V

    return-object p0
.end method

.method public setTimestampMillis(J)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->access$3000(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;J)V

    return-object p0
.end method

.method public setTriggerParams(ILcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-virtual {p2}, Lcom/google/protobuf/o$a;->build()Lcom/google/protobuf/o;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->access$2100(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;ILcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)V

    return-object p0
.end method

.method public setTriggerParams(ILcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    .line 18
    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->access$2100(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;ILcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)V

    return-object p0
.end method
