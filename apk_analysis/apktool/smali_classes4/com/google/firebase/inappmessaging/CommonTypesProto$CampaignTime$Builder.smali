.class public final Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;
.super Lcom/google/protobuf/o$a;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTimeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/o$a<",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;",
        ">;",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTimeOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->access$000()Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/o$a;-><init>(Lcom/google/protobuf/o;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/firebase/inappmessaging/CommonTypesProto$1;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDate()Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->access$300(Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;)V

    return-object p0
.end method

.method public clearTime()Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->access$600(Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;)V

    return-object p0
.end method

.method public clearTimeZone()Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->access$800(Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;)V

    return-object p0
.end method

.method public getDate()Lh92;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->getDate()Lh92;

    move-result-object p0

    return-object p0
.end method

.method public getTime()Lju8;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->getTime()Lju8;

    move-result-object p0

    return-object p0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->getTimeZone()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTimeZoneBytes()Lfx0;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->getTimeZoneBytes()Lfx0;

    move-result-object p0

    return-object p0
.end method

.method public hasDate()Z
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->hasDate()Z

    move-result p0

    return p0
.end method

.method public hasTime()Z
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->hasTime()Z

    move-result p0

    return p0
.end method

.method public mergeDate(Lh92;)Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->access$200(Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;Lh92;)V

    return-object p0
.end method

.method public mergeTime(Lju8;)Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->access$500(Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;Lju8;)V

    return-object p0
.end method

.method public setDate(Lh92$b;)Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-virtual {p1}, Lcom/google/protobuf/o$a;->build()Lcom/google/protobuf/o;

    move-result-object p1

    check-cast p1, Lh92;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->access$100(Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;Lh92;)V

    return-object p0
.end method

.method public setDate(Lh92;)Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    .line 18
    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->access$100(Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;Lh92;)V

    return-object p0
.end method

.method public setTime(Lju8$b;)Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-virtual {p1}, Lcom/google/protobuf/o$a;->build()Lcom/google/protobuf/o;

    move-result-object p1

    check-cast p1, Lju8;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->access$400(Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;Lju8;)V

    return-object p0
.end method

.method public setTime(Lju8;)Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    .line 18
    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->access$400(Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;Lju8;)V

    return-object p0
.end method

.method public setTimeZone(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->access$700(Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTimeZoneBytes(Lfx0;)Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->access$900(Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;Lfx0;)V

    return-object p0
.end method
