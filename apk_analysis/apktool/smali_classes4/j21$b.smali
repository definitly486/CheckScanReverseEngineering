.class public final Lj21$b;
.super Lcom/google/protobuf/o$a;
.source "SourceFile"

# interfaces
.implements Lha5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/o$a<",
        "Lj21;",
        "Lj21$b;",
        ">;",
        "Lha5;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lj21;->a()Lj21;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/o$a;-><init>(Lcom/google/protobuf/o;)V

    return-void
.end method


# virtual methods
.method public final b(Li21;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object p0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast p0, Lj21;

    sget v0, Lj21;->ALREADY_SEEN_CAMPAIGNS_FIELD_NUMBER:I

    invoke-virtual {p0, p1}, Lj21;->b(Li21;)V

    return-void
.end method
