.class public final Lda6;
.super Lk1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lk1<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lne4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lne4<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Lkx2;

.field public final c:Lcl4;


# direct methods
.method public constructor <init>(Lne4;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lne4<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lk1;-><init>()V

    iput-object p1, p0, Lda6;->a:Lne4;

    sget-object p1, Lkx2;->b:Lkx2;

    iput-object p1, p0, Lda6;->b:Lkx2;

    sget-object p1, Lpo4;->PUBLICATION:Lpo4;

    new-instance v0, Lkg0;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lkg0;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1, v0}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object p1

    iput-object p1, p0, Lda6;->c:Lcl4;

    return-void
.end method


# virtual methods
.method public final c()Lne4;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lne4<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lda6;->a:Lne4;

    return-object p0
.end method

.method public final getDescriptor()Lmp7;
    .locals 0

    iget-object p0, p0, Lda6;->c:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmp7;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "kotlinx.serialization.PolymorphicSerializer(baseClass: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lda6;->a:Lne4;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
