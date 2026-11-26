.class public Ly91$k;
.super Ly91;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly91;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation


# instance fields
.field public final b:Ly91;


# direct methods
.method public constructor <init>(Ly91;)V
    .locals 0

    invoke-direct {p0}, Ly91;-><init>()V

    iput-object p1, p0, Ly91$k;->b:Ly91;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-virtual {p0, p1}, Ly91$k;->c(C)Z

    move-result p0

    return p0
.end method

.method public final b(Ljava/lang/CharSequence;)I
    .locals 1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget-object p0, p0, Ly91$k;->b:Ly91;

    invoke-virtual {p0, p1}, Ly91;->b(Ljava/lang/CharSequence;)I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public final c(C)Z
    .locals 0

    iget-object p0, p0, Ly91$k;->b:Ly91;

    invoke-virtual {p0, p1}, Ly91;->c(C)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final d()Ly91;
    .locals 0

    iget-object p0, p0, Ly91$k;->b:Ly91;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Ly91$k;->b:Ly91;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ".negate()"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
