.class public final Lr14$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr14;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lb24$b;

.field public final c:Lb53$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lr14$a;->a:Landroid/content/Context;

    sget-object p1, Lb24$b;->o:Lb24$b;

    iput-object p1, p0, Lr14$a;->b:Lb24$b;

    new-instance p1, Lb53$a;

    invoke-direct {p1}, Lb53$a;-><init>()V

    iput-object p1, p0, Lr14$a;->c:Lb53$a;

    return-void
.end method
