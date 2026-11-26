.class public final Lkd$e$b$f;
.super Lkd$e$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkd$e$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const-string v0, "UnFave"

    invoke-static {p1, v0}, Lud;->c(ILjava/lang/String;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1}, Lkd$e$b;-><init>(Ljava/lang/Object;)V

    return-void
.end method
