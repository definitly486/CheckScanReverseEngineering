.class public final Lly5$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lly5$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lly5$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lly5$a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lly5$a$b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lly5$a$b;->a:Lly5$a$b;

    return-void
.end method
