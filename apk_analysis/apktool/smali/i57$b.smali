.class public final Li57$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li57;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li57;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Li57$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Li57$b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Li57$b;->a:Li57$b;

    return-void
.end method
