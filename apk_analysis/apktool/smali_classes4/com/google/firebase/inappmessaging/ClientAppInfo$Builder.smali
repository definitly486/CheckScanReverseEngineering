.class public final Lcom/google/firebase/inappmessaging/ClientAppInfo$Builder;
.super Lcom/google/protobuf/o$a;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inappmessaging/ClientAppInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/ClientAppInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/o$a<",
        "Lcom/google/firebase/inappmessaging/ClientAppInfo;",
        "Lcom/google/firebase/inappmessaging/ClientAppInfo$Builder;",
        ">;",
        "Lcom/google/firebase/inappmessaging/ClientAppInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/firebase/inappmessaging/ClientAppInfo;->access$000()Lcom/google/firebase/inappmessaging/ClientAppInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/o$a;-><init>(Lcom/google/protobuf/o;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/firebase/inappmessaging/ClientAppInfo$1;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/ClientAppInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearFirebaseInstanceId()Lcom/google/firebase/inappmessaging/ClientAppInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/ClientAppInfo;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/ClientAppInfo;->access$500(Lcom/google/firebase/inappmessaging/ClientAppInfo;)V

    return-object p0
.end method

.method public clearGoogleAppId()Lcom/google/firebase/inappmessaging/ClientAppInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/ClientAppInfo;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/ClientAppInfo;->access$200(Lcom/google/firebase/inappmessaging/ClientAppInfo;)V

    return-object p0
.end method

.method public getFirebaseInstanceId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/ClientAppInfo;->getFirebaseInstanceId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFirebaseInstanceIdBytes()Lfx0;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/ClientAppInfo;->getFirebaseInstanceIdBytes()Lfx0;

    move-result-object p0

    return-object p0
.end method

.method public getGoogleAppId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/ClientAppInfo;->getGoogleAppId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getGoogleAppIdBytes()Lfx0;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/ClientAppInfo;->getGoogleAppIdBytes()Lfx0;

    move-result-object p0

    return-object p0
.end method

.method public hasFirebaseInstanceId()Z
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/ClientAppInfo;->hasFirebaseInstanceId()Z

    move-result p0

    return p0
.end method

.method public hasGoogleAppId()Z
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/ClientAppInfo;->hasGoogleAppId()Z

    move-result p0

    return p0
.end method

.method public setFirebaseInstanceId(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/ClientAppInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/ClientAppInfo;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/ClientAppInfo;->access$400(Lcom/google/firebase/inappmessaging/ClientAppInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setFirebaseInstanceIdBytes(Lfx0;)Lcom/google/firebase/inappmessaging/ClientAppInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/ClientAppInfo;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/ClientAppInfo;->access$600(Lcom/google/firebase/inappmessaging/ClientAppInfo;Lfx0;)V

    return-object p0
.end method

.method public setGoogleAppId(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/ClientAppInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/ClientAppInfo;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/ClientAppInfo;->access$100(Lcom/google/firebase/inappmessaging/ClientAppInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setGoogleAppIdBytes(Lfx0;)Lcom/google/firebase/inappmessaging/ClientAppInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/ClientAppInfo;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/ClientAppInfo;->access$300(Lcom/google/firebase/inappmessaging/ClientAppInfo;Lfx0;)V

    return-object p0
.end method
