.class public final enum Lkx8$c1;
.super Lkx8;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkx8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "Rawtext"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final f(Ljx8;Lea1;)V
    .locals 1

    sget-object v0, Lkx8;->RawtextLessthanSign:Lkx8;

    invoke-static {p1, p2, p0, v0}, Lkx8;->g(Ljx8;Lea1;Lkx8;Lkx8;)V

    return-void
.end method
