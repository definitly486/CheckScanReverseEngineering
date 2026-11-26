.class public final Lrya;
.super Lzza;
.source "SourceFile"


# instance fields
.field public final synthetic f:Lp0b;


# direct methods
.method public constructor <init>(Lp0b;)V
    .locals 0

    iput-object p1, p0, Lrya;->f:Lp0b;

    invoke-direct {p0, p1}, Lzza;-><init>(Lp0b;)V

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lp0b;->k:Ljava/lang/Object;

    iget-object p0, p0, Lrya;->f:Lp0b;

    invoke-virtual {p0}, Lp0b;->b()[Ljava/lang/Object;

    move-result-object p0

    aget-object p0, p0, p1

    return-object p0
.end method
