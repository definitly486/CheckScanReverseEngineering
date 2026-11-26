.class public final Lcom/google/firebase/perf/v1/AndroidApplicationInfo$Builder;
.super Lcom/google/protobuf/o$a;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/perf/v1/AndroidApplicationInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/perf/v1/AndroidApplicationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/o$a<",
        "Lcom/google/firebase/perf/v1/AndroidApplicationInfo;",
        "Lcom/google/firebase/perf/v1/AndroidApplicationInfo$Builder;",
        ">;",
        "Lcom/google/firebase/perf/v1/AndroidApplicationInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->access$000()Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/o$a;-><init>(Lcom/google/protobuf/o;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/firebase/perf/v1/AndroidApplicationInfo$1;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearPackageName()Lcom/google/firebase/perf/v1/AndroidApplicationInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->access$200(Lcom/google/firebase/perf/v1/AndroidApplicationInfo;)V

    return-object p0
.end method

.method public clearSdkVersion()Lcom/google/firebase/perf/v1/AndroidApplicationInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->access$500(Lcom/google/firebase/perf/v1/AndroidApplicationInfo;)V

    return-object p0
.end method

.method public clearVersionName()Lcom/google/firebase/perf/v1/AndroidApplicationInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->access$800(Lcom/google/firebase/perf/v1/AndroidApplicationInfo;)V

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPackageNameBytes()Lfx0;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->getPackageNameBytes()Lfx0;

    move-result-object p0

    return-object p0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSdkVersionBytes()Lfx0;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->getSdkVersionBytes()Lfx0;

    move-result-object p0

    return-object p0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->getVersionName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVersionNameBytes()Lfx0;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->getVersionNameBytes()Lfx0;

    move-result-object p0

    return-object p0
.end method

.method public hasPackageName()Z
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->hasPackageName()Z

    move-result p0

    return p0
.end method

.method public hasSdkVersion()Z
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->hasSdkVersion()Z

    move-result p0

    return p0
.end method

.method public hasVersionName()Z
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->hasVersionName()Z

    move-result p0

    return p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/google/firebase/perf/v1/AndroidApplicationInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->access$100(Lcom/google/firebase/perf/v1/AndroidApplicationInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPackageNameBytes(Lfx0;)Lcom/google/firebase/perf/v1/AndroidApplicationInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->access$300(Lcom/google/firebase/perf/v1/AndroidApplicationInfo;Lfx0;)V

    return-object p0
.end method

.method public setSdkVersion(Ljava/lang/String;)Lcom/google/firebase/perf/v1/AndroidApplicationInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->access$400(Lcom/google/firebase/perf/v1/AndroidApplicationInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSdkVersionBytes(Lfx0;)Lcom/google/firebase/perf/v1/AndroidApplicationInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->access$600(Lcom/google/firebase/perf/v1/AndroidApplicationInfo;Lfx0;)V

    return-object p0
.end method

.method public setVersionName(Ljava/lang/String;)Lcom/google/firebase/perf/v1/AndroidApplicationInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->access$700(Lcom/google/firebase/perf/v1/AndroidApplicationInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setVersionNameBytes(Lfx0;)Lcom/google/firebase/perf/v1/AndroidApplicationInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->access$900(Lcom/google/firebase/perf/v1/AndroidApplicationInfo;Lfx0;)V

    return-object p0
.end method
