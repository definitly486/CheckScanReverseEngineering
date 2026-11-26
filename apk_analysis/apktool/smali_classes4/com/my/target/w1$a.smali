.class public final Lcom/my/target/w1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkn9;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/w1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/my/target/f1;

.field public final synthetic b:Lcom/my/target/w1;


# direct methods
.method public constructor <init>(Lcom/my/target/w1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/my/target/w1$a;->b:Lcom/my/target/w1;

    return-void
.end method
