.class public final Lcy8$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcy8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Le69;

.field public final b:Lf69;


# direct methods
.method public constructor <init>(Le69;Lf69;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcy8$a;->a:Le69;

    iput-object p2, p0, Lcy8$a;->b:Lf69;

    return-void
.end method
