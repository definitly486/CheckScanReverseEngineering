.class public abstract Lwd9;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<View::",
        "Ljh5;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final stateStrategyType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lb78;",
            ">;"
        }
    .end annotation
.end field

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lb78;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwd9;->tag:Ljava/lang/String;

    iput-object p2, p0, Lwd9;->stateStrategyType:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public abstract apply(Ljh5;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TView;)V"
        }
    .end annotation
.end method

.method public getStrategyType()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lb78;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lwd9;->stateStrategyType:Ljava/lang/Class;

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lwd9;->tag:Ljava/lang/String;

    return-object p0
.end method
