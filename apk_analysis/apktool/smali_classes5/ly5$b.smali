.class public final Lly5$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lly5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lly5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lly5$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lly5$b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lly5$b;->a:Lly5$b;

    return-void
.end method
