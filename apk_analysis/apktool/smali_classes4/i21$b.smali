.class public final Li21$b;
.super Lcom/google/protobuf/o$a;
.source "SourceFile"

# interfaces
.implements Lha5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/o$a<",
        "Li21;",
        "Li21$b;",
        ">;",
        "Lha5;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Li21;->a()Li21;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/o$a;-><init>(Lcom/google/protobuf/o;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object p0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast p0, Li21;

    sget v0, Li21;->CAMPAIGN_ID_FIELD_NUMBER:I

    invoke-virtual {p0, p1}, Li21;->setCampaignId(Ljava/lang/String;)V

    return-void
.end method

.method public final d(J)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object p0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast p0, Li21;

    sget v0, Li21;->CAMPAIGN_ID_FIELD_NUMBER:I

    invoke-virtual {p0, p1, p2}, Li21;->c(J)V

    return-void
.end method
