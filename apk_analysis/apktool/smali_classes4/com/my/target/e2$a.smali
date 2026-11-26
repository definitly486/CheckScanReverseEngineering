.class public abstract Lcom/my/target/e2$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/e2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field public final a:Lao9;


# direct methods
.method public constructor <init>(Lao9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/my/target/e2$a;->a:Lao9;

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;)Z
.end method
