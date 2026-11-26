.class public final Lqq3$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqq3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lar3;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lfe0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lfe0;-><init>(I)V

    new-instance v1, Lar3;

    invoke-direct {v1, v0}, Lar3;-><init>(Lbr3;)V

    sput-object v1, Lqq3$b;->a:Lar3;

    return-void
.end method
