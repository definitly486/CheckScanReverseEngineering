.class public final Lyads/me3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final b:[Ljava/lang/Object;


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/me3;->b:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public readResolve()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lyads/me3;->b:[Ljava/lang/Object;

    invoke-static {p0}, Lyads/oe3;->b([Ljava/lang/Object;)Lyads/k55;

    move-result-object p0

    return-object p0
.end method
