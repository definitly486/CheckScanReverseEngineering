.class public final Leb8$a;
.super Leb8;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leb8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Leb8$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Leb8$a;

    invoke-direct {v0}, Lsp7;-><init>()V

    sput-object v0, Leb8$a;->a:Leb8$a;

    return-void
.end method
