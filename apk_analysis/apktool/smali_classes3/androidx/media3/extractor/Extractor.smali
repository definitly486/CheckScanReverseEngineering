.class public interface abstract Landroidx/media3/extractor/Extractor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/Extractor$ReadResult;
    }
.end annotation


# static fields
.field public static final RESULT_CONTINUE:I = 0x0

.field public static final RESULT_END_OF_INPUT:I = -0x1

.field public static final RESULT_SEEK:I = 0x1


# virtual methods
.method public getSniffFailureDetails()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media3/extractor/SniffFailure;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/google/common/collect/j;->c:Lcom/google/common/collect/j$b;

    sget-object p0, Lcom/google/common/collect/w;->f:Lcom/google/common/collect/w;

    return-object p0
.end method

.method public getUnderlyingImplementation()Landroidx/media3/extractor/Extractor;
    .locals 0
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    return-object p0
.end method

.method public abstract init(Landroidx/media3/extractor/ExtractorOutput;)V
.end method

.method public abstract read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
.end method

.method public abstract release()V
.end method

.method public abstract seek(JJ)V
.end method

.method public abstract sniff(Landroidx/media3/extractor/ExtractorInput;)Z
.end method
