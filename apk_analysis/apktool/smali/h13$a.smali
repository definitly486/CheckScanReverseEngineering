.class public final Lh13$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh13;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lh13;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lh13;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lh13$a;->a:Lh13;

    return-void
.end method
