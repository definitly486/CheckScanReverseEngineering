.class public final Lm18$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm18;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public a:Z

.field public final b:Lm18$b;

.field public final c:Lar3;

.field public final d:Lm18$c$a;


# direct methods
.method public constructor <init>(Lar3;Lm18$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lm18$c$a;

    invoke-direct {v0, p0}, Lm18$c$a;-><init>(Lm18$c;)V

    iput-object v0, p0, Lm18$c;->d:Lm18$c$a;

    iput-object p1, p0, Lm18$c;->c:Lar3;

    iput-object p2, p0, Lm18$c;->b:Lm18$b;

    return-void
.end method
