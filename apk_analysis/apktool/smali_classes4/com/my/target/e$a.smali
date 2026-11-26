.class public final Lcom/my/target/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final synthetic b:Lcom/my/target/e;


# direct methods
.method public constructor <init>(Lcom/my/target/e;Lcom/my/target/e;Lf72;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/my/target/e$a;->b:Lcom/my/target/e;

    iput-object p4, p0, Lcom/my/target/e$a;->a:Landroid/content/Context;

    return-void
.end method
