.class public final Lcom/my/target/k$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/my/target/k$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Ls95;


# direct methods
.method public constructor <init>(Ls95;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/my/target/k$c;->a:Ls95;

    return-void
.end method
