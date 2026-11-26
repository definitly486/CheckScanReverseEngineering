.class public final Lyads/cs4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/ld5;


# direct methods
.method public constructor <init>(Lyads/ld5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/cs4;->a:Lyads/ld5;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget-object p0, p0, Lyads/cs4;->a:Lyads/ld5;

    invoke-virtual {p0}, Lyads/pb5;->getCurrentItem()I

    move-result p0

    return p0
.end method
