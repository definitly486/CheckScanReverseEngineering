.class public final Lcom/my/target/a2$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/my/target/yc$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/a2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lcom/my/target/a2;


# direct methods
.method public constructor <init>(Lcom/my/target/a2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/my/target/a2$c;->a:Lcom/my/target/a2;

    return-void
.end method
