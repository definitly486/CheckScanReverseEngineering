.class public final Le73$b;
.super Lcom/google/protobuf/o$a;
.source "SourceFile"

# interfaces
.implements Lha5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le73;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/o$a<",
        "Le73;",
        "Le73$b;",
        ">;",
        "Lha5;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Le73;->a()Le73;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/o$a;-><init>(Lcom/google/protobuf/o;)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/google/protobuf/q$j;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object p0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast p0, Le73;

    sget v0, Le73;->PROJECT_NUMBER_FIELD_NUMBER:I

    invoke-virtual {p0, p1}, Le73;->b(Ljava/lang/Iterable;)V

    return-void
.end method

.method public final c(Lbm1;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object p0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast p0, Le73;

    sget v0, Le73;->PROJECT_NUMBER_FIELD_NUMBER:I

    invoke-virtual {p0, p1}, Le73;->e(Lbm1;)V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object p0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast p0, Le73;

    sget v0, Le73;->PROJECT_NUMBER_FIELD_NUMBER:I

    invoke-virtual {p0, p1}, Le73;->setProjectNumber(Ljava/lang/String;)V

    return-void
.end method

.method public final e(Lql1;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object p0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast p0, Le73;

    sget v0, Le73;->PROJECT_NUMBER_FIELD_NUMBER:I

    invoke-virtual {p0, p1}, Le73;->f(Lql1;)V

    return-void
.end method
